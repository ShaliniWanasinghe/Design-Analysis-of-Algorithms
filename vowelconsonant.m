

letter = input('Enter a single letter: ', 's'); 

letter = lower(letter);

vowels = ['a', 'e', 'i', 'o', 'u'];

isVowel = false;

for i = 1:length(vowels)
    if letter == vowels(i)
        isVowel = true;
        break;
    end
end


if isletter(letter)
    if isVowel
        fprintf('The letter "%s" is a vowel.\n', letter);
    else
        fprintf('The letter "%s" is a consonant.\n', letter);
    end
else
    fprintf('The input "%s" is not a valid letter.\n', letter);
end

