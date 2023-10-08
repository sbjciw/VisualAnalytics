
/* generate summary table of sashelp.failure on cause by process; */
proc summary data=sashelp.failure;
	Var count;
	Class cause;
	By process;
	output out=sumfailure sum=countsum;
quit;

data sumfailure (drop=_type_);
	set sumfailure;
	where _type_=1 ; 
run;


/* calculate label values for three layer of intersection lines  */
proc sql;
	select max(countsum), min(countsum), mean(max(countsum),min(countsum)), count(distinct cause)
	into :Outer, :Inner, :Middle, :DistinctCount
	from sumfailure
	group by process;
quit;

/* data of vector plot for radius line  */
data CalData; 
	format tick_label F12.1;
	set sumfailure ; 
	by process cause;
	retain id 0;

	cCount = _n_;
	degrees= (cCount-1)*360/&DistinctCount; 

/* spoke length is set by the radiusbase, here set to 3 */
	radiusbase = 3; 

	spoke_x0 = 0; 
	spoke_y0 = 0; 
	spoke_x1 = (radiusbase * sin(degrees/57.3)); 
    spoke_y1 = (radiusbase * cos(degrees/57.3)); 

/* set the intersect line length at vertices, here set to 0.05  */
	arclen=0.05;

/* calculate the position of the starting and ending points of the short lines on each spoke */
/* atan() function returns the angle in radians  */
	do i=1 to 3 ;
		theta=57.3*atan(arclen/i);
		Refline = sqrt(arclen**2 + i**2);
		Refline_x0=(Refline * sin((degrees-theta)/57.3)); 
		Refline_y0=(Refline * cos((degrees-theta)/57.3)); 
		Refline_x1=(Refline * sin((degrees+theta)/57.3)); 
		Refline_y1=(Refline * cos((degrees+theta)/57.3)); 


		if (i=3) then do;
/* 	only shows label at the spoke endings  */
			Spoke_Label = cause;
/* adjust the length of radius in order to calculate the cocordinates for data points */
			AdjRadius = ((countsum - &Inner) * radiusbase + (&Outer-countsum))/(&Outer-&Inner);
			data_x0 = AdjRadius * sin(degrees/57.3); 
			data_y0 = AdjRadius * cos(degrees/57.3); 
			call symput("data_x0",data_x0);
			call symput("data_y0",data_y0);
		end;

		id = id + 1;

/* 	display the max, min and average value for the short lines  */
/*  they will be displayed next to the tick marks on the first spoke */
		if (cCount=1) then do;
			tick_x = Refline_x1 ;
			tick_y = Refline_y1;
			if (i=3) then tick_label = &Outer;
			if (i=2) then tick_label = &Middle;
			if (i=1) then tick_label = &Inner;	
		end;
		output;
	end;

run;


/* update the data points so one point can be connected to the next one  */
data CalData1 ; 
	set CalData(where=(Spoke_Label is not missing)) ; 
	retain data_x0 data_y0;
	data_x1=lag(data_x0);
	data_y1=lag(data_y0);
	if _n_=1 then do;
		data_x1=&data_x0;
		data_y1=&data_y0;
	end;
run;

data CalData;
	merge CalData CalData1;
	by id;
	if (process ne 'Process A') then Spoke_Label = '';
	drop AdjRadius i id radiusbase arclen theta Refline cCount degrees;
run;



cas ;
caslib _all_ assign;

proc casutil;
	DROPTABLE CASDATA="CalData" INCASLIB="casuser" QUIET;
	load data=work.CalData outcaslib="casuser"
	casout="CalData";
run;

proc casutil incaslib="casuser" outcaslib="casuser";
	promote casdata ="CalData" ;
run;
