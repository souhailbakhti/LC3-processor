# LC3-processor
LC3 Architecture and Assembly codes Test

This Project Contain The Desing and architecure of LC3 micro-processor with samples codes in assembly . 

In this project i'm using Logisim to Design and Simulate LC3 Processosr.

you can download Logisim for this Link : 

http://www.cburch.com/logisim/download.html



<table  border="1" cellpadding="2" cellspacing="0">
  <tr>
    <th>Syntaxe</th>
    <th>Action</th>
    <th>nzp</th>
    <th colspan="16">Codage</th>
  </tr>
  <tr align="center">
    <td></td>
    <td></td>
    <td></td>
    <td colspan="4">Op-code</td>
    <td colspan="12">Arguments</td>
  </tr>
  <tr align="center">
    <td></td>
    <td></td>
    <td></td>
    <td>15</td>
    <td>14</td>
    <td>13</td>
    <td>12</td>
    <td>11</td>
    <td>10</td>
    <td>9</td>
    <td>8</td>
    <td>7</td>
    <td>6</td>
    <td>5</td>
    <td>4</td>
    <td>3</td>
    <td>2</td>
    <td>1</td>
    <td>0</td>
  </tr>
  <tr align="center">
    <td align="left">NOT DR,SR</td>
    <td align="left">DR &larr; not SR</td>
    <td>*</td>
    <td colspan="4">1 0 0 1</td>
    <td colspan="3">DR</td>
    <td colspan="3">SR</td>
    <td colspan="6">1 1 1 1 1 1</td>
  </tr>
  <tr align="center">
    <td align="left">ADD DR,SR1,SR2</td>
    <td align="left">DR &larr; SR1 + SR2</td>
    <td>*</td>
    <td colspan="4">0 0 0 1</td>
    <td colspan="3">DR</td>
    <td colspan="3">SR1</td>
    <td>0</td>
    <td colspan="2">0 0</td>
    <td colspan="3">SR2</td>
  </tr>
  <tr align="center">
    <td align="left">ADD DR,SR1,Imm5</td>
    <td align="left">DR &larr; SR1 + SEXT(Imm5)</td>
    <td>*</td>
    <td colspan="4">0 0 0 1</td>
    <td colspan="3">DR</td>
    <td colspan="3">SR1</td>
    <td>1</td>
    <td colspan="5">Imm5</td>
  </tr>
  <tr align="center">
    <td align="left">AND DR,SR1,SR2</td>
    <td align="left">DR &larr; SR1 and SR2</td>
    <td>*</td>
    <td colspan="4">0 1 0 1</td>
    <td colspan="3">DR</td>
    <td colspan="3">SR1</td>
    <td>0</td>
    <td colspan="2">0 0</td>
    <td colspan="3">SR2</td>
  </tr>
  <tr align="center">
    <td align="left">AND DR,SR1,Imm5</td>
    <td align="left">DR &larr; SR1 and SEXT(Imm5)</td>
    <td>*</td>
    <td colspan="4">0 1 0 1</td>
    <td colspan="3">DR</td>
    <td colspan="3">SR1</td>
    <td>1</td>
    <td colspan="5">Imm5</td>
  </tr>
  <tr align="center">
    <td align="left">LEA DR,label</td>
    <td align="left">DR &larr; PC + SEXT(PCoffset9)</td>
    <td>*</td>
    <td colspan="4">1 1 1 0</td>
    <td colspan="3">DR</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">LD DR,label</td>
    <td align="left">DR &larr; mem[PC + SEXT(PCoffset9)]</td>
    <td>*</td>
    <td colspan="4">0 0 1 0</td>
    <td colspan="3">DR</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">ST SR,label</td>
    <td align="left">mem[PC + SEXT(PCoffset9)] &larr; SR</td>
    <td></td>
    <td colspan="4">0 0 1 1</td>
    <td colspan="3">SR</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">LDR DR,BaseR,Offset6</td>
    <td align="left">DR &larr; mem[BaseR + SEXT(Offset6)]</td>
    <td>*</td>
    <td colspan="4">0 1 1 0</td>
    <td colspan="3">DR</td>
    <td colspan="3">BaseR</td>
    <td colspan="6">Offset6</td>
  </tr>
  <tr align="center">
    <td align="left">STR SR,BaseR,Offset6</td>
    <td align="left">mem[BaseR + SEXT(Offset6)] &larr; SR</td>
    <td></td>
    <td colspan="4">0 1 1 1</td>
    <td colspan="3">SR</td>
    <td colspan="3">BaseR</td>
    <td colspan="6">Offset6</td>
  </tr>
  <tr align="center">
    <td align="left">LDI DR,label</td>
    <td align="left">DR &larr; mem[mem[PC + SEXT(PCoffset9)]]</td>
    <td>*</td>
    <td colspan="4">1 0 1 0</td>
    <td colspan="3">DR</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">STI SR,label</td>
    <td align="left">mem[mem[PC + SEXT(PCoffset9)]] &larr; SR</td>
    <td></td>
    <td colspan="4">1 0 1 1</td>
    <td colspan="3">SR</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">BR[n][z][p] label</td>
    <td align="left">Si (cond) PC &larr; PC + SEXT(PCoffset9)</td>
    <td></td>
    <td colspan="4">0 0 0 0</td>
    <td>n</td>
    <td>z</td>
    <td>p</td>
    <td colspan="9">PCoffset9</td>
  </tr>
  <tr align="center">
    <td align="left">NOP</td>
    <td align="left">No Operation</td>
    <td></td>
    <td colspan="4">0 0 0 0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td colspan="9">0 0 0 0 0 0 0 0 0</td>
  </tr>
  <tr align="center">
    <td align="left">JMP BaseR</td>
    <td align="left">PC &larr; BaseR</td>
    <td></td>
    <td colspan="4">1 1 0 0</td>
    <td colspan="3">0 0 0</td>
    <td colspan="3">BaseR</td>
    <td colspan="6">0 0 0 0 0 0</td>
  </tr>
  <tr align="center">
    <td align="left">RET (&equiv; JMP R7)</td>
    <td align="left">PC &larr; R7</td>
    <td></td>
    <td colspan="4">1 1 0 0</td>
    <td colspan="3">0 0 0</td>
    <td colspan="3">1 1 1</td>
    <td colspan="6">0 0 0 0 0 0</td>
  </tr>
  <tr align="center">
    <td align="left">JSR label</td>
    <td align="left">R7 &larr; PC; PC &larr; PC + SEXT(PCoffset11)</td>
    <td></td>
    <td colspan="4">0 1 0 0</td>
    <td>1</td>
    <td colspan="11">PCoffset11</td>
  </tr>
  <tr align="center">
    <td align="left">JSRR BaseR</td>
    <td align="left">R7 &larr; PC; PC &larr; BaseR</td>
    <td></td>
    <td colspan="4">0 1 0 0</td>
    <td>0</td>
    <td colspan="2">0 0</td>
    <td colspan="3">BaseR</td>
    <td colspan="6">0 0 0 0 0 0</td>
  </tr>
  <tr align="center">
    <td align="left">RTI</td>
    <td align="left">cf. <a href="../Stack/">interruptions</a></td>
    <td></td>
    <td colspan="4">1 0 0 0</td>
    <td colspan="12">0 0 0 0 0 0 0 0 0 0 0 0</td>
  </tr>
  <tr align="center">
    <td align="left">TRAP Trapvect8</td>
    <td align="left">R7 &larr; PC; PC &larr; mem[Trapvect8]</td>
    <td></td>
    <td colspan="4">1 1 1 1</td>
    <td colspan="4">0 0 0 0</td>
    <td colspan="8">Trapvect8</td>
  </tr>
  <tr align="center">
    <td align="left">Reserved</td>
    <td align="left"></td>
    <td></td>
    <td colspan="4">1 1 0 1</td>
    <td colspan="12"></td>
  </tr>
</table>

