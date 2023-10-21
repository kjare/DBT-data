DECLARE
	-- Here variable V is varchar datatype 
	-- and flag variable is number datatype 
	-- variable c is char datatype . 
	v			 VARCHAR2(400) := 'Ramesh is a Geek'; 
	noofvowels	 NUMBER := 0; 
	noofconsonants NUMBER := 0; 
	C			 CHAR; 
BEGIN
	FOR i IN 1..Length(v) LOOP 
		c := Substr(v, i, 1); 

		-- Check if the current character is vowel 
		IF c IN ( 'A', 'E', 'I', 'O', 'U' ) 
			OR c IN ( 'a', 'e', 'i', 'o', 'u' ) THEN
		noofvowels := noofvowels + 1; 

		-- Else current character is a consonant except space 
		ELSE
		IF c NOT IN ( ' ' ) THEN
			noofconsonants := noofconsonants + 1; 
		END IF; 
		END IF; 
	END LOOP; 

	dbms_output.Put_line('No. of Vowels: '
						|| noofvowels); 

	dbms_output.Put_line('No. of Consonants: '
						|| noofconsonants); 
END; 
-- Program End 
