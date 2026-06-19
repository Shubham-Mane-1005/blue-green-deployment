#!/bin/bash

LISTENER_ARN="arn:aws:elasticloadbalancing:ap-southeast-1:423537160223:listener/app/bluealb/87949ba024645282/f20092af3bf89be3"

BLUE_TG_ARN="arn:aws:elasticloadbalancing:ap-southeast-1:423537160223:targetgroup/Bluetg01/e9be334e1e271352"

GREEN_TG_ARN="arn:aws:elasticloadbalancing:ap-southeast-1:423537160223:targetgroup/Greentg01/9035b38edde12d44"


aws elbv2 modify-listener \
--listener-arn $LISTENER_ARN \
--default-actions Type=forward,TargetGroupArn=$GREEN_TG_ARN 
