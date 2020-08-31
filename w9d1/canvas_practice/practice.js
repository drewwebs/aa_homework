document.addEventListener("DOMContentLoaded", function(){
    const Canvas = document.getElementById("mycanvas");
    [Canvas.height, Canvas.width] = [500, 500];
    const ctx = Canvas.getContext('2d');

    ctx.fillStyle = 'orange';
    ctx.fillRect(200, 200, 200, 200);

    ctx.beginPath();
    ctx.arc(200, 200, 50, 0, 2 * Math.PI);
    ctx.strokeStyle = 'blue';
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "purple";
    ctx.fill();
});


// document.addEventListener("DOMContentLoaded", function () {
//     const canvasEl = document.getElementById("mycanvas");
//     canvasEl.width = 500;
//     canvasEl.height = 500;

//     const ctx = canvasEl.getContext("2d");
//     ctx.fillStyle = "purple";
//     ctx.fillRect(0, 0, 500, 500);

//     ctx.beginPath();
//     ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
//     ctx.strokeStyle = "green";
//     ctx.lineWidth = 5;
//     ctx.stroke();
//     ctx.fillStyle = "blue";
//     ctx.fill();
// });
