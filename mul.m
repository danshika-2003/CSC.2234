A=[1 2 3;4 5 6];
B=[7 8;9 10;11 12];
[m,n]=size(A);
[m1,n1]=size(B);

if n~=m1 
    error('dimensions not match');
end

c=zeros(m,n1);
for i=1:m % 1:2 1st i=1
    for j=1:n1 %1 2 j=1 j=2 
        for k=1:n %1 3 k=1 k=2 k=3
        c(i,j)=c(i,j)+A(i,k)*B(k,j); 
        %c(1,2)=0+a(1,1)*b(1,2)
        %c(1,2)=7+a(1,2)*b(2,2)
        %c(1,2)=25+a(1,3)*b(3,2)=58
        end                     
    end
end

disp("results of matrix multiplication")
disp(c)
