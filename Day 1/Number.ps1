$startNumber = $args[0]
$stopNumber = $args[1]
$numbersToDisplayInLine = $args[2]
$displayNumbers = "" 
$j=0


for($i = $startNumber; $i -le $stopNumber; $i++)
{
	
	$j++;
	$isDivided = 0;

	if($i % 15 -eq 0)
	{
		$displayNumber += "FizzBuzz ";		
		$isDivided = 1;
				
	}
	
	elseif($i % 5 -eq 0)
	{
		$displayNumber += "Buzz ";		
		$isDivided = 1;
			
		
	}
	elseif($i % 3 -eq 0)
	{
		$displayNumber += "Fizz ";
		$isDivided = 1;
			
	}

	
	if($isDivided -eq 0)
	{
		$displayNumber += "$i ";
	}
	
	if($j % $numbersToDisplayInLine -eq 0)
	{
		write-host "$displayNumber"
		$displayNumber = ""
	}
}

	