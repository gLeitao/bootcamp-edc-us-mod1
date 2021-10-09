 
resource "aws_s3_bucket" "dl"{
    bucket = "datalake_geovani_igti_edc_uc_tf"
    acl = "private"

    tags ={
        IES = "IGTI"
        CURSO = "EDC"
    }

    server_side_encryption_configuration+
    rule{
        apply_server_side_ecyption_by_default{
            sse_algotithm = "AES256"
        }
    }
}