resource "genesyscloud_integration_action" "action" {
    name           = var.action_name
    category       = var.action_category
    integration_id = var.integration_id
    secure         = var.secure_data_action
    
    contract_input  = jsonencode({
        "additionalProperties" = true,
        "properties" = {
            "role1" = {
                "type" = "string"
            },
            "role10" = {
                "type" = "string"
            },
            "role11" = {
                "type" = "string"
            },
            "role12" = {
                "type" = "string"
            },
            "role13" = {
                "type" = "string"
            },
            "role14" = {
                "type" = "string"
            },
            "role15" = {
                "type" = "string"
            },
            "role16" = {
                "type" = "string"
            },
            "role17" = {
                "type" = "string"
            },
            "role18" = {
                "type" = "string"
            },
            "role19" = {
                "type" = "string"
            },
            "role2" = {
                "type" = "string"
            },
            "role20" = {
                "type" = "string"
            },
            "role3" = {
                "type" = "string"
            },
            "role4" = {
                "type" = "string"
            },
            "role5" = {
                "type" = "string"
            },
            "role6" = {
                "type" = "string"
            },
            "role7" = {
                "type" = "string"
            },
            "role8" = {
                "type" = "string"
            },
            "role9" = {
                "type" = "string"
            },
            "userId" = {
                "type" = "string"
            }
        },
        "required" = [
            "userId"
        ],
        "type" = "object"
    })
    contract_output = jsonencode({
        "additionalProperties" = true,
        "properties" = {},
        "type" = "object"
    })
    
    config_request {
        request_template     = "[\n    #if(\"$!{input.role1}\" != \"\")\n    \"$!{input.role1}\"\n    #end\n    #if(\"$!{input.role2}\" != \"\")\n    ,\"$!{input.role2}\"\n    #end\n    #if(\"$!{input.role3}\" != \"\")\n    ,\"$!{input.role3}\"\n    #end\n    #if(\"$!{input.role4}\" != \"\")\n    ,\"$!{input.role4}\"\n    #end\n    #if(\"$!{input.role5}\" != \"\")\n    ,\"$!{input.role5}\"\n    #end\n    #if(\"$!{input.role6}\" != \"\")\n    ,\"$!{input.role6}\"\n    #end\n    #if(\"$!{input.role7}\" != \"\")\n    ,\"$!{input.role7}\"\n    #end\n    #if(\"$!{input.role8}\" != \"\")\n    ,\"$!{input.role8}\"\n    #end\n    #if(\"$!{input.role9}\" != \"\")\n    ,\"$!{input.role9}\"\n    #end\n    #if(\"$!{input.role10}\" != \"\")\n    ,\"$!{input.role10}\"\n    #end\n\t#if(\"$!{input.role11}\" != \"\")\n    ,\"$!{input.role11}\"\n    #end\n\t#if(\"$!{input.role12}\" != \"\")\n    ,\"$!{input.role12}\"\n    #end\n\t#if(\"$!{input.role13}\" != \"\")\n    ,\"$!{input.role13}\"\n    #end\n\t#if(\"$!{input.role14}\" != \"\")\n    ,\"$!{input.role14}\"\n    #end\n\t#if(\"$!{input.role15}\" != \"\")\n    ,\"$!{input.role15}\"\n    #end\n\t#if(\"$!{input.role16}\" != \"\")\n    ,\"$!{input.role16}\"\n    #end\n\t#if(\"$!{input.role17}\" != \"\")\n    ,\"$!{input.role17}\"\n    #end\n\t#if(\"$!{input.role18}\" != \"\")\n    ,\"$!{input.role18}\"\n    #end\n\t#if(\"$!{input.role19}\" != \"\")\n    ,\"$!{input.role19}\"\n    #end\n\t#if(\"$!{input.role20}\" != \"\")\n    ,\"$!{input.role20}\"\n    #end\n]"
        request_type         = "PUT"
        request_url_template = "/api/v2/users/$${input.userId}/roles"
    }

    config_response {
        success_template = "$${rawResult}"
    }
}