s = thisLayer; // this used to point to the layer (in this case itself)
sTop = s.sourceRectAtTime().top; // spit out the top position property of the layer
sLeft = s.sourceRectAtTime().left; // spit out the left position property

sHeight = s.sourceRectAtTime().height; // spit out the height property of the layer
sWidth = s.sourceRectAtTime().width; // spit out the width property

sAnchorY = sTop + (sHeight/2); // calculate the Y-axis anchor from the top property added by half of the height of the layer
sAnchorX = sLeft + (sWidth/2); // more or less the same just for the horizontal or X-axis

[sAnchorX, sAnchorY] // actually putting all the end value to the value of the anchor point of the layer
