BUCKET=humansofclassicalmusic.co.uk
aws s3 cp index.html s3://$BUCKET
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key index.html
aws cloudfront create-invalidation --distribution-id E1U55MPGMB8CN2 --paths "/*"
