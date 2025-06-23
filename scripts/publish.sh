bundle exec jekyll build
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
s3_website push
