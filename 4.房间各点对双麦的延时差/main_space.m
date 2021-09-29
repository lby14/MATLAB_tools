clc;clear all;close all;

roomL = 5000;
roomW = 3000;

roomLengthGrid = 1:roomL;
roomWidthGrid = 1:roomW;

micD = 70;

micPosOne = [200,roomW/2];
micPosTwo = [200,roomW/2+micD];

[x,y] = meshgrid(roomLengthGrid,roomWidthGrid);
x = vec(x);
y = vec(y);

pointNum = length(x);

for ii = 1:pointNum
    pointPos = [x(ii),y(ii)];
    rangeDiffVec(ii) = norm(pointPos-micPosOne) - norm(pointPos-micPosTwo);
end
rangeDiffMatx = reshape(rangeDiffVec,roomW,roomL);
imagesc(rangeDiffMatx');colorbar;
