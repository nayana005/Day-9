isPartTime=1;
isFullTime=2;
empRatePerHr=20;
MaxWorkingDays=20;
totalworkingHrs=0;
totalworkingDays=0;
MaxWorkingHrs=200;
salaryPerMonth=0;
isRunning=true;
function empWorkingHrs() {
        case $1 in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
        echo $empHrs;
}

while [[ $totalworkingDays -lt $MaxWorkingDays && $totalworkingHrs -lt $MaxWorkingHrs ]]
do
       workingHrs="$( empWorkingHrs $((RANDOM%3)) )"
       echo $workingHrs;
       totalworkingDays=$(($totalworkingDays+1));
       totalworkingHrs=$(($totalworkingHrs+$workingHrs))
done
salaryPerMonth=$(($empRatePerHr*$totalworkingHrs));
echo $salaryPerMonth;
