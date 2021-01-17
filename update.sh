BUCKET=humansofclassicalmusic.co.uk

aws s3 cp index.html s3://$BUCKET
aws s3 cp style.css s3://$BUCKET
aws s3 cp favicon.ico s3://$BUCKET
aws s3 cp ac.png s3://$BUCKET

aws s3api put-object-acl --bucket $BUCKET --key index.html --acl public-read
aws s3api put-object-acl --bucket $BUCKET --key style.css --acl public-read
aws s3api put-object-acl --bucket $BUCKET --key favicon.ico --acl public-read
aws s3api put-object-acl --bucket $BUCKET --key ac.png --acl public-read
