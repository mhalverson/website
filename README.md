This is the source data for my personal website, hosted at
https://matthalverson.com.

# Overview

It uses jekyll (https://jekyllrb.com/) to generate the website files from
templates and raw content. It uses s3_website
(https://github.com/laurilehmijoki/s3_website) to publish new revisions of the
website.

# Usage

Install a non-system version of ruby:

    brew install ruby
    which ruby # it should be something other than /usr/bin/ruby
    export PATH="/usr/local/opt/ruby/bin:$PATH"

Install dependencies:

    bundle install

Start up a local server to preview the website:

    bundle exec jekyll serve

Publish the website:

    bundle exec jekyll build # generate the website in the `_site` directory
    export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
    s3_website push --dry-run
    s3_website push # push the changes to the s3 bucket where the files are hosted

# Notes

* the AWS credentials are stored in the (gitignore'd) file `s3_website.yml`.
* the jekyll master config is `_config.yml`.
* the domain name was purchased through Godaddy.
* the DNS, SSL, and CDN were all configured through AWS (Route 53, ACM, and Cloudfront respectively) per the instructions at https://www.alexejgossmann.com/AWS_S3_and_CloudFront/.
  - DNS in GoDaddy is deferred to Route 53 using "custom nameservers" that were copy/pasted from the Route 53 NS entries.
  - DNS in Route 53 is configured to point to my Cloudfront distribution.
  - SSL is managed by using Route 53 to point to the certificate in ACM; the same is done in the Cloudfront distribution.
  - CDN is managed by having the Cloudfront distribution point to the S3 buckets.
