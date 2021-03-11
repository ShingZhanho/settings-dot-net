{
    "metadata": {
        "desc": "A sample settings file for Settings.Net unit tests."
    },
    "data": [
        {
            "SampleGroup1": {
                "type": "Group",
                "desc": "The first root of the sample file.",
                "contents": [
                    {
                        "SampleSubGroup1": {
                            "type": "Group",
                            "contents": [
                                {
                                    "Group1-SubGroup1-String": {
                                        "type": "String",
                                        "desc": "A sample string entry under group1-subgroup1",
                                        "value": "some data here"
                                    }
                                },
                                {
                                    "Group1-SubGroup1-Int": {
                                        "type": "Int",
                                        "desc": "A sample int entry under group1-subgroup1",
                                        "value": 10
                                    }
                                },
                                {
                                    "Group1-SubGroup1-Bool": {
                                        "type": "Bool",
                                        "desc": "A sample bool entry under group1-subgroup1",
                                        "value": true
                                    }
                                }
                            ]
                        }
                    },
                    {
                        "SampleSubGroup2":{
                            "type":"Group",
                            "desc":"A sub group under group 1, with null contents.",
                            "contents":null
                        }
                    },
                    {
                        "SampleSubGroup3":{
                            "type":"Group",
                            "desc":"A sample group, this group contains entries with null types.",
                            "contents":[
                                {
                                    "string-null-value":{
                                        "type":"String",
                                        "value":null
                                    }
                                },
                                {
                                    "bool-null-value":{
                                        "type":"Bool",
                                        "value":null
                                    }
                                },
                                {
                                    "int-null-value":{
                                        "type":"Int",
                                        "value":null
                                    }
                                }
                            ]
                        }
                    }
                ]
            }
        },
        {
            "SampleGroup2":{
                "type":"Group",
                "desc":"The second root of this settings file",
                "contents":[
                    {
                        "SampleSubGroup1":{
                            "type":"Group",
                            "contents":null
                        }
                    }
                ]
            }
        }
    ]
}