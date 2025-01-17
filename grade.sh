CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

cd student-submission
var=$(find . -type f -name "ListExamples.java")
if ! [[ $var == *"ListExamples.java"* ]]
    then
        echo "ListExamples.java not found"
        exit
fi 
echo "ListExamples.java found"

cp $var ../grading-area
cp $var2 /grading-area