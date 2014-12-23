
function precalculate_all()
{
    var final_day = new Date(2040, 0, 1);
    for (var d = new Date(2012, 0, 1); d <= final_day; d.setDate(d.getDate() + 1)) {
        convertSubmittedDate(d);
    }

}


function convertSubmittedDate(input_date)
    {
    var answer, calStartDate, date1, date2, dateDiff, inputDate1, inputDate2, totalDays;
    
    calStartDate = "9/21/1792";
    inputDate2 = calStartDate.split("/");
    date1 = input_date;
    date2 = new Date(inputDate2[2], inputDate2[0]-1, inputDate2[1]);
    dateDiff = date1.getTime() - date2.getTime();
    if (dateDiff <= 0)
        {alert("The first day of the French Revolutionary Calendar is September 22, 1792. Please enter a date later than 9/21/1792.");
        return;}                                
    totalDays = Math.round(dateDiff / (24*60*60*1000)); 
    answer=computeFrenchDate(totalDays);                        //function call 
  //document.anyDateConversion.conversionResult.value = answer;
    console.log(input_date);
    console.log(answer);
    }

function computeFrenchDate(x)
    {
    var answer, daycount, revday, revmthnum, revmonth, revyr, romnum, totalDays;
    var leap = new Boolean();
    var test = new Boolean();

    test = false;                   //for debugging, change "test" to true to output to the screen every iteration of the while loop below

    totalDays = x;
    daycount = 1;                               
    revday = 0;
    revmthnum = 1;
    revyr = 1;                      
        leap = false;    

    while (daycount <= totalDays)           //"while" loop counts through the difference in days, applying the rules of the French calendar
        {                   //  and "accumulating" the French date
        revday = revday + 1;
        if (revday == 31)
            {
            revday = 1;
            revmthnum = revmthnum + 1;
            }
        if (revmthnum == 13)
            {
            leap = false;
            if (revyr == 3 || revyr == 7 || revyr == 11 || revyr == 15) //4 "if" statements apply the Romme rule for French leap years
                {leap = true;}
            if (revyr >= 20 && revyr % 4 == 0)
                {leap = true;}
            if (revyr >= 100 && revyr % 100 == 0)
                {leap = false;}
            if (revyr >= 400 && revyr % 400 == 0)
                {leap = true;}          
            if (!leap)
                {
                if (revday > 5)
                                    
                    {revday = 1;
                    revmthnum = 1;
                    revyr = revyr + 1;}
                }
            if (leap)
                {
                if (revday > 6)
                    {revday = 1;
                    revmthnum = 1;
                    revyr = revyr + 1;}
                }           
            }
        daycount = daycount + 1;

        if (test)
            {
            document.write (revmthnum + "&nbsp" + "&nbsp" + revday + "&nbsp" + "&nbsp" + revyr); 
            document.write ("<br>");
            }
        }                       

    switch(revmthnum)
        {
        case 1: revmonth = "Vendémiaire";   //vintage
            break;
        case 2: revmonth = "Brumaire";      //fog
            break;
        case 3: revmonth = "Frimaire";      //sleet         
            break;
        case 4: revmonth = "Nivôse";        //snow
            break;
        case 5: revmonth = "Pluviôse";      //rain
            break;
        case 6: revmonth = "Ventôse";       //wind
            break;
        case 7: revmonth = "Germinal";      //seed
            break;
        case 8: revmonth = "Floréal";       //blossom
            break;
        case 9: revmonth = "Prairial";      //pasture
            break;
        case 10: revmonth = "Messidor";     //harvest
            break;
        case 11: revmonth = "Thermidor";    //heat
            break;
        case 12: revmonth = "Fructidor";    //fruit
            break;
        case 13: revmonth = "Sans-culottide";
            break;
        }
    romnum=rnConverter(revyr);                          //function call
    answer = revday + " " + revmonth + " " + romnum;            
    return answer;
    }

function rnConverter(aN)
    {
        var aN, Cs, i, Ms, remainder, romanNumeral, Xs;

        Ms = Math.floor(aN/1000);
    romanNumeral = "";
    i = 0;
        while (i < Ms)                      //4 "while" loops accumulate the characters of the Roman numeral from left to right
        {
        romanNumeral = romanNumeral + "M";
        i = i + 1;
        }
    remainder = aN % 1000;
    if (remainder == 999)                
        {
        romanNumeral = romanNumeral + "CMXCIX";
        remainder = 0;
        }
    else
        if (remainder > 989)
            {romanNumeral = romanNumeral + "CMXC";
            remainder = remainder - 990;}
        else
            if (remainder > 899)
                {romanNumeral = romanNumeral + "CM";
                remainder = remainder - 900;}                      
                else
                    if (remainder > 499)
                        {romanNumeral = romanNumeral + "D";                                   
                            remainder = remainder - 500;}                     
                    else
                            if (remainder > 489)
                                {romanNumeral = romanNumeral + "CDXC";                                 
                                remainder = remainder - 490;}                       
                            else
                                if (remainder > 399)
                                    {romanNumeral = romanNumeral + "CD";                       
                                        remainder = remainder - 400;}

    Cs =Math.floor(remainder/100);                                    
        i = 0;
    while (i < Cs )                 
            {romanNumeral = romanNumeral + "C";
        i = i + 1 ;}                                       
        remainder = remainder % 100;                            
        if (remainder == 99) 
            {romanNumeral = romanNumeral + "XCIX";
            remainder = 0;}
        if (remainder > 89)
                {romanNumeral = romanNumeral + "XC";                                 
                remainder = remainder - 90;}                    
        else
                if (remainder > 49)
                    {romanNumeral = romanNumeral + "L";                          
                    remainder = remainder - 50;}           
            else
                    if (remainder > 39)
                            {romanNumeral = romanNumeral + "XL";                      
                            remainder = remainder - 40;}          
     Xs =Math.floor(remainder/10);                                  
     i = 0;
    while (i< Xs)                  
            {romanNumeral = romanNumeral + "X";
        i=i+1;}                                   
        remainder = remainder % 10;                         
        if (remainder == 9)
            {romanNumeral = romanNumeral + "IX";
        remainder= 0;}
    else
            if (remainder > 4)
                {romanNumeral = romanNumeral + "V";                                     
                remainder = remainder - 5;}                       
            else
                if (remainder == 4) 
                    {romanNumeral = romanNumeral + "IV";
                remainder = remainder - 4;}
    i=0;
    while (i < remainder )   
            {romanNumeral = romanNumeral + "I";
        i = i + 1 ;}                                   
    return romanNumeral;
    }
precalculate_all();
