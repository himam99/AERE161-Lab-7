clear, clc;

%intialize names, verbs, and objects
names = {'Hammad ', 'Yugi ', 'Ryan '};
verbs = {'loves ', 'hates ', 'eats '};
objects = {'pizza.', 'chips.', 'Ryan.'};

%choose one of the terms at random
n = names(randi([1,3],1));
v = verbs(randi([1,3],1));
o = objects(randi([1,3],1));

%display results
disp(strcat(n,v,o));