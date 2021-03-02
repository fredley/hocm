BUCKET=humansofclassicalmusic.co.uk

aws s3 cp ac.png s3://$BUCKET
aws s3 cp mstile-150x150.png s3://$BUCKET
aws s3 cp android-chrome-192x192.png s3://$BUCKET
aws s3 cp favicon-16x16.png s3://$BUCKET
aws s3 cp safari-pinned-tab.svg s3://$BUCKET
aws s3 cp android-chrome-512x512.png s3://$BUCKET
aws s3 cp favicon-32x32.png s3://$BUCKET
aws s3 cp site.webmanifest s3://$BUCKET
aws s3 cp apple-touch-icon.png s3://$BUCKET
aws s3 cp favicon.ico s3://$BUCKET
aws s3 cp style.css s3://$BUCKET
aws s3 cp browserconfig.xml s3://$BUCKET
aws s3 cp index.html s3://$BUCKET
aws s3 cp banner.jpg s3://$BUCKET

echo "Updating ACLs..."

aws s3api put-object-acl --bucket $BUCKET --acl public-read --key ac.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key mstile-150x150.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key android-chrome-192x192.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key favicon-16x16.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key safari-pinned-tab.svg
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key android-chrome-512x512.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key favicon-32x32.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key site.webmanifest
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key apple-touch-icon.png
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key favicon.ico
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key style.css
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key browserconfig.xml
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key index.html
aws s3api put-object-acl --bucket $BUCKET --acl public-read --key banner.jpg

echo "Invalidating caches..."
aws cloudfront create-invalidation --distribution-id E1U55MPGMB8CN2 --paths "/*"
