PROJECT=data-test
BUCKET=gs://my-cat-pics

python -m script \
  --input data0.csv \
  --project $PROJECT \
  --job_name $PROJECT-cashflow-sum \
  --runner DataflowRunner \
  --staging_location $BUCKET/staging \
  --temp_location $BUCKET/temp \
  --output $BUCKET/output
