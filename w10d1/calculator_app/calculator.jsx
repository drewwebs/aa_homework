import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
  }

  //your code here
  setNum1(e) {

  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        
      </div>  
    );
  }
}

export default Calculator;
