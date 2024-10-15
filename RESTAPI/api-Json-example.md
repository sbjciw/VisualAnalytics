### REST API 返回 Json 对象示例

本文档为《数据分析不求人》一书第 21 章中调用 Report Transforms API，抽取 VA 报表参数的 API 所返回的 paraFile 文件内容。这是一个返回的 Json 对象的示例。



```json
{
    "id": "7b28c2fc-7dc5-4a7f-881f-0d724dd0374b",
    "creationTimeStamp": "2020-11-26T00:49:33.810Z",
    "modifiedTimeStamp": "2020-11-26T00:49:33.810Z",
    "messages": [
        {
            "code": 0,
            "text": "Extracted 1 parameter value substitutions and returning them in response."
        }
    ],
    "evaluation": [],
    "errorMessages": [],
    "dataSources": [],
    "inputReportUri": "/reports/reports/6785fb66-44bf-481a-97ec-58d6b6d28dfb",
    "substitutionParameters": [
        {
            "key": "pr61",
            "label": "car Parameter",
            "site": "parameterDefinition",
            "structure": "list",
            "type": "string",
            "values": [
                "Ford",
                "Chevy"
            ]
        }
    ],
    "links": [
        {
            "method": "POST",
            "rel": "createDataMappedReport",
            "type": "application/vnd.sas.report.transform",
            "responseType": "application/vnd.sas.report.transform",
            "title": "Change Data Source",
            "href": "/reportTransforms/dataMappedReports"
        },
        {
            "method": "POST",
            "rel": "extractTranslationWorksheet",
            "type": "application/vnd.sas.report.transform",
            "responseType": "text/plain",
            "title": "Extract a localization worksheet from the report",
            "href": "/reportTransforms/translationWorksheets/{translationLocale}"
        },
        {
            "method": "PUT",
            "rel": "updateTranslationWorksheet",
            "type": "text/plain",
            "title": "Update the localization in the report",
            "href": "/reportTransforms/translationWorksheets/{reportId}/{translationLocale}"
        },
        {
            "method": "POST",
            "rel": "createTranslatedReport",
            "type": "application/vnd.sas.report.transform",
            "responseType": "application/vnd.sas.report.transform",
            "title": "Translate Report",
            "href": "/reportTransforms/translatedReports/{translationLocale}"
        },
        {
            "method": "POST",
            "rel": "createConvertedReport",
            "type": "application/vnd.sas.report.transform",
            "responseType": "application/vnd.sas.report.transform",
            "title": "Convert to XML or JSON",
            "href": "/reportTransforms/convertedReports"
        },
        {
            "method": "POST",
            "rel": "createEvaluatedReport",
            "type": "application/vnd.sas.report.transform",
            "responseType": "application/vnd.sas.report.transform",
            "title": "Semantically Evaluate",
            "href": "/reportTransforms/evaluatedReports"
        },
        {
            "method": "POST",
            "rel": "createParameterizedReport",
            "type": "application/vnd.sas.report.transform",
            "responseType": "application/vnd.sas.report.transform",
            "title": "Substitute Parameter Values",
            "href": "/reportTransforms/parameterizedReports"
        }
    ],
    "reportContent": {
        "@element": "SASReport",
        "xmlns": "http://www.sas.com/sasreportmodel/bird-4.4.0",
        "label": "Report 1",
        "dateCreated": "2020-11-24T03:02:47Z",
        "createdApplicationName": "SAS Visual Analytics 2020",
        "dateModified": "2020-11-26T00:47:34Z",
        "lastModifiedApplicationName": "SAS Visual Analytics 2020",
        "createdVersion": "4.4.0",
        "createdLocale": "en",
        "nextUniqueNameIndex": 64,
        "results": [],
        "dataDefinitions": [
            {
                "@element": "ParentDataDefinition",
                "name": "dd28",
                "source": "ds7",
                "businessItems": [
                    {
                        "@element": "RelationalDataItem",
                        "name": "bi31",
                        "base": "bi8"
                    },
                    {
                        "@element": "RelationalDataItem",
                        "name": "bi32",
                        "base": "bi9"
                    },
                    {
                        "@element": "RelationalDataItem",
                        "name": "bi33",
                        "base": "bi10"
                    },
                    {
                        "@element": "RelationalDataItem",
                        "name": "bi34",
                        "base": "bi14"
                    }
                ],
                "relationalQueryList": [],
                "multidimensionalQueryList": [],
                "childQueryRelationshipType": "independent",
                "dataDefinitionList": [
                    {
                        "@element": "DataDefinition",
                        "name": "dd29",
                        "type": "relational",
                        "source": "ds7",
                        "businessItems": [],
                        "relationalQueryList": [
                            {
                                "@element": "RelationalQuery",
                                "detail": false,
                                "axes": [
                                    {
                                        "@element": "Query_Axis",
                                        "type": "column",
                                        "itemList": [
                                            "bi31",
                                            "bi32",
                                            "bi33",
                                            "bi34"
                                        ]
                                    }
                                ],
                                "sortItems": [
                                    {
                                        "@element": "SortItem",
                                        "sortDirection": "ascending",
                                        "sortLevelList": [],
                                        "reference": "bi31"
                                    }
                                ]
                            }
                        ],
                        "multidimensionalQueryList": [],
                        "resultDefinitions": [
                            {
                                "@element": "ResultDefinition",
                                "name": "dd30",
                                "purpose": "primary",
                                "maxRowsBehavior": "truncate",
                                "relationalQueryList": [],
                                "multidimensionalQueryList": [],
                                "maxRowsLookup": "listTable"
                            }
                        ]
                    }
                ],
                "status": "executable"
            },
            {
                "@element": "ParentDataDefinition",
                "name": "dd57",
                "source": "ds7",
                "businessItems": [
                    {
                        "@element": "RelationalDataItem",
                        "name": "bi62",
                        "base": "bi8"
                    }
                ],
                "relationalQueryList": [],
                "multidimensionalQueryList": [],
                "childQueryRelationshipType": "independent",
                "dataDefinitionList": [
                    {
                        "@element": "DataDefinition",
                        "name": "dd58",
                        "type": "relational",
                        "source": "ds7",
                        "businessItems": [],
                        "relationalQueryList": [
                            {
                                "@element": "RelationalQuery",
                                "detail": false,
                                "axes": [
                                    {
                                        "@element": "Query_Axis",
                                        "type": "column",
                                        "itemList": [
                                            "bi62"
                                        ]
                                    }
                                ],
                                "sortItems": [
                                    {
                                        "@element": "SortItem",
                                        "sortDirection": "ascending",
                                        "sortLevelList": [],
                                        "reference": "bi62"
                                    }
                                ]
                            }
                        ],
                        "multidimensionalQueryList": [],
                        "resultDefinitions": [
                            {
                                "@element": "ResultDefinition",
                                "name": "dd59",
                                "purpose": "primary",
                                "maxRowsBehavior": "truncate",
                                "relationalQueryList": [],
                                "multidimensionalQueryList": [],
                                "maxRowsLookup": "list"
                            }
                        ]
                    }
                ],
                "status": "executable"
            }
        ],
        "dataSources": [
            {
                "@element": "DataSource",
                "name": "ds7",
                "label": "CARS",
                "type": "relational",
                "casResource": {
                    "@element": "CasResource",
                    "server": "cas-shared-default",
                    "library": "Public",
                    "table": "CARS",
                    "locale": "en_US"
                },
                "businessItemFolder": {
                    "@element": "BusinessItemFolder",
                    "items": [
                        {
                            "@element": "DataItem",
                            "name": "bi8",
                            "xref": "car",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi9",
                            "xref": "color",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi10",
                            "xref": "dealer",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi11",
                            "xref": "dest",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi12",
                            "xref": "dte",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi13",
                            "xref": "returns",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi14",
                            "xref": "sales",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi15",
                            "xref": "type",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataItem",
                            "name": "bi16",
                            "xref": "wght",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataSource_PredefinedDataItem",
                            "name": "bi17",
                            "label": "Frequency",
                            "usage": "quantitative",
                            "format": "COMMA12.",
                            "calculation": "totalCount",
                            "geoInfos": []
                        },
                        {
                            "@element": "DataSource_PredefinedDataItem",
                            "name": "bi18",
                            "label": "Frequency Percent",
                            "usage": "quantitative",
                            "format": "PERCENT20.2",
                            "calculation": "totalCountPercent",
                            "geoInfos": []
                        }
                    ]
                }
            }
        ],
        "visualElements": [
            {
                "@element": "Table",
                "labels": [],
                "dataList": [
                    "dd28"
                ],
                "columns": {
                    "@element": "Table_Columns",
                    "columns": [
                        {
                            "@element": "Table_Column",
                            "variable": "bi31",
                            "visible": true
                        },
                        {
                            "@element": "Table_Column",
                            "variable": "bi32",
                            "visible": true
                        },
                        {
                            "@element": "Table_Column",
                            "variable": "bi33",
                            "visible": true
                        },
                        {
                            "@element": "Table_Column",
                            "variable": "bi34",
                            "visible": true,
                            "compactFormat": false
                        }
                    ]
                },
                "name": "ve27",
                "labelAttribute": "List table - car 1",
                "applyDynamicBrushes": "yes",
                "columnSizing": "autoFill",
                "resultDefinitionList": [
                    "dd30"
                ],
                "sourceInteractionVariableList": [
                    "bi31",
                    "bi32",
                    "bi33"
                ],
                "editorProperties": [
                    {
                        "@element": "Editor_Property",
                        "value": "true",
                        "key": "isAutoLabel"
                    }
                ]
            },
            {
                "@element": "Prompt",
                "name": "ve56",
                "ref": "pr61",
                "labelAttribute": "List - car 1",
                "promptVisual": {
                    "@element": "CheckBoxList"
                },
                "applyDynamicBrushes": "promptsOnly",
                "sourceInteractionVariableList": [
                    "bi62"
                ],
                "editorProperties": [
                    {
                        "@element": "Editor_Property",
                        "value": "CONTROL",
                        "key": "autoChartCategory"
                    },
                    {
                        "@element": "Editor_Property",
                        "value": "true",
                        "key": "isAutoLabel"
                    }
                ]
            }
        ],
        "promptDefinitions": [
            {
                "@element": "PromptDefinition",
                "name": "pr61",
                "label": "car Parameter",
                "data": "dd57",
                "parameter": true,
                "labelItem": "bi62",
                "constraint": {
                    "@element": "StringConstraint",
                    "maxValueCount": 2147483647
                },
                "valueItem": "bi62",
                "resultDefinitionList": [
                    "dd59"
                ],
                "defaultValue": {
                    "@element": "Prompt_DefaultValue",
                    "value": {
                        "@element": "Collection_DefaultValue",
                        "memberList": [
                            {
                                "@element": "String",
                                "value": "Ford"
                            },
                            {
                                "@element": "String",
                                "value": "Chevy"
                            }
                        ]
                    }
                }
            }
        ],
        "view": {
            "@element": "View",
            "header": {
                "@element": "Header",
                "mediaContainerList": [
                    {
                        "@element": "MediaContainer",
                        "target": "mt2",
                        "layout": {
                            "@element": "ResponsiveLayout",
                            "orientation": "horizontal",
                            "overflow": "fit",
                            "weights": [
                                {
                                    "@element": "Weights",
                                    "mediaTarget": "mt5",
                                    "unit": "percent",
                                    "values": [
                                        {
                                            "@element": "Weight",
                                            "value": "100%"
                                        }
                                    ]
                                },
                                {
                                    "@element": "Weights",
                                    "mediaTarget": "mt4",
                                    "unit": "percent",
                                    "values": [
                                        {
                                            "@element": "Weight",
                                            "value": "100%"
                                        }
                                    ]
                                },
                                {
                                    "@element": "Weights",
                                    "mediaTarget": "mt3",
                                    "unit": "percent",
                                    "values": [
                                        {
                                            "@element": "Weight",
                                            "value": "100%"
                                        }
                                    ]
                                }
                            ]
                        },
                        "containedElementList": []
                    }
                ]
            },
            "sections": [
                {
                    "@element": "Section",
                    "name": "vi6",
                    "label": "Page 1",
                    "header": {
                        "@element": "Header",
                        "mediaContainerList": [
                            {
                                "@element": "MediaContainer",
                                "target": "mt2",
                                "layout": {
                                    "@element": "ResponsiveLayout",
                                    "orientation": "horizontal",
                                    "overflow": "fit",
                                    "weights": [
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt5",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        },
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt4",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        },
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt3",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        }
                                    ]
                                },
                                "containedElementList": []
                            }
                        ]
                    },
                    "body": {
                        "@element": "Body",
                        "mediaContainerList": [
                            {
                                "@element": "MediaContainer",
                                "target": "mt2",
                                "layout": {
                                    "@element": "ResponsiveLayout",
                                    "orientation": "vertical",
                                    "overflow": "fit",
                                    "weights": [
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt5",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        },
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt4",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        },
                                        {
                                            "@element": "Weights",
                                            "mediaTarget": "mt3",
                                            "unit": "percent",
                                            "values": [
                                                {
                                                    "@element": "Weight",
                                                    "value": "100%"
                                                }
                                            ]
                                        }
                                    ]
                                },
                                "containedElementList": [
                                    {
                                        "@element": "Visual",
                                        "name": "vi55",
                                        "ref": "ve56",
                                        "responsiveConstraint": {
                                            "@element": "ResponsiveConstraint",
                                            "widthConstraint": {
                                                "@element": "Responsive_WidthConstraint",
                                                "widths": [
                                                    {
                                                        "@element": "Width",
                                                        "mediaTarget": "mt3",
                                                        "preferredSizeBehavior": "ignore",
                                                        "flexibility": "flexible"
                                                    }
                                                ]
                                            },
                                            "heightConstraint": {
                                                "@element": "Responsive_HeightConstraint",
                                                "heights": [
                                                    {
                                                        "@element": "Height",
                                                        "mediaTarget": "mt3",
                                                        "preferredSizeBehavior": "ignore",
                                                        "flexibility": "shrinkable",
                                                        "value": "25%"
                                                    }
                                                ]
                                            }
                                        }
                                    },
                                    {
                                        "@element": "Visual",
                                        "name": "vi26",
                                        "ref": "ve27",
                                        "responsiveConstraint": {
                                            "@element": "ResponsiveConstraint",
                                            "widthConstraint": {
                                                "@element": "Responsive_WidthConstraint",
                                                "widths": [
                                                    {
                                                        "@element": "Width",
                                                        "mediaTarget": "mt3",
                                                        "preferredSizeBehavior": "ignore",
                                                        "flexibility": "flexible"
                                                    }
                                                ]
                                            },
                                            "heightConstraint": {
                                                "@element": "Responsive_HeightConstraint",
                                                "heights": [
                                                    {
                                                        "@element": "Height",
                                                        "mediaTarget": "mt3",
                                                        "preferredSizeBehavior": "ignore",
                                                        "flexibility": "flexible",
                                                        "value": "75%"
                                                    }
                                                ]
                                            }
                                        }
                                    }
                                ]
                            }
                        ]
                    }
                }
            ]
        },
        "actions": [],
        "interactions": [
            {
                "@element": "Interaction",
                "name": "ia63",
                "type": "filter",
                "derived": false,
                "elementReferenceList": [
                    {
                        "@element": "InteractionElementReference",
                        "purpose": "source",
                        "styleTargets": [],
                        "ref": "ve56",
                        "variables": [
                            [
                                "bi62"
                            ]
                        ]
                    },
                    {
                        "@element": "InteractionElementReference",
                        "purpose": "target",
                        "styleTargets": [],
                        "ref": "ve27",
                        "variables": [
                            [
                                "bi31"
                            ]
                        ]
                    }
                ]
            }
        ],
        "mediaSchemes": [
            {
                "@element": "MediaScheme",
                "name": "ms1",
                "baseStylesheetResource": {
                    "@element": "BaseStylesheetResource",
                    "theme": "opal"
                },
                "stylesheet": {
                    "@element": "Stylesheet",
                    "styles": {}
                }
            }
        ],
        "mediaTargets": [
            {
                "@element": "MediaTarget",
                "name": "mt2",
                "windowSize": "default",
                "scheme": "ms1"
            },
            {
                "@element": "MediaTarget",
                "name": "mt3",
                "windowSize": "small",
                "scheme": "ms1"
            },
            {
                "@element": "MediaTarget",
                "name": "mt4",
                "windowSize": "medium",
                "scheme": "ms1"
            },
            {
                "@element": "MediaTarget",
                "name": "mt5",
                "windowSize": "large",
                "scheme": "ms1"
            }
        ],
        "properties": [
            {
                "@element": "Property",
                "key": "displayDataSource",
                "value": "ds7"
            },
            {
                "@element": "Property",
                "key": "loadedFromXML",
                "value": "true"
            }
        ],
        "reportParts": [],
        "exportProperties": [
            {
                "@element": "Export",
                "destination": "pdf",
                "exportPropertyList": [
                    {
                        "@element": "Export_Property",
                        "key": "showCoverPage",
                        "value": "true",
                        "content": ""
                    },
                    {
                        "@element": "Export_Property",
                        "key": "showPageNumbers",
                        "value": "true",
                        "content": ""
                    }
                ]
            }
        ],
        "history": {
            "@element": "History",
            "versions": [
                {
                    "@element": "Version",
                    "versionKey": "4.4.0",
                    "lastDate": "2020-11-24T03:02:47Z"
                }
            ],
            "editors": [
                {
                    "@element": "Editor",
                    "applicationName": "VA",
                    "revisions": [
                        {
                            "@element": "Revision",
                            "editorVersion": "2020",
                            "lastDate": "2020-11-26T00:47:34.778Z"
                        }
                    ]
                }
            ]
        },
        "sasReportState": {
            "@element": "SASReportState",
            "view": {
                "@element": "View_State",
                "sections": []
            }
        },
        "implicitInteractions": []
    }
}
```



