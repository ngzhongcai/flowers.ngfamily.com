#!/bin/bash
cp -R /Users/$1/Desktop/REPO/NGFAMILY.COM/flowers.ngfamily.com /Users/$1/Desktop
aws s3 rm s3://flowers.ngfamily.com --recursive --region ap-southeast-1
aws s3 cp /Users/$1/Desktop/flowers.ngfamily.com s3://flowers.ngfamily.com --recursive --region ap-southeast-1 --exclude ".git/*"
rm -rf /Users/$1/Desktop/flowers.ngfamily.com