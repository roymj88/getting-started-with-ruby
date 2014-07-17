#Match and Replace
s = 'SFS Richmond (123)-456-8989';
p s.gsub(/\([0-9]{3}\)-[0-9]{3}-[0-9]{4}/, "123123123")