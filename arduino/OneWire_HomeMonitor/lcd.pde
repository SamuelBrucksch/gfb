void WebOutputTemps(Client client)
{
  client.print("T1:");
  client.print(T1temp);
  client.println("<br />");
  client.print("T2:");
  client.print(T2temp);
  client.println("<br />");
  client.print("T3:");
  client.print(T3temp);
  client.println("<br />");
  client.print("T4:");
  client.print(T4temp);
  client.println("<br />");  
  client.print("T5:");
  client.print(T5temp);
  client.println("<br />");
  client.print("T6:");
  client.print(T6temp);
  client.println("<br />"); 
  client.print("T7:");
  client.print(T7temp);
  client.println("<br />");
  client.print("T8:");
  client.print(T8temp);
  client.println("<br />");
  client.print("T9:");
  client.print(T9temp);
  client.println("<br />");
  client.print("T10:");
  client.print(T10temp);
  client.println("<br />");
  client.print("HVAC:");
  client.print(hvacVal);
  client.println("<br />");  
}


void lcd4TempUpdate()
{
  //line 1
  lcd.at(1,1, "Here:");
  if (sensorsA.isConnected(T6))
    lcd.at(1,6, dtostrf(T6temp, 4, 1, buffer));
  else
    lcd.at(1,6, "---- ");
 
  lcd.at(1,11, "Util:");
  if (sensorsA.isConnected(T5))
    lcd.at(1,16, dtostrf(T5temp, 4, 1, buffer));
  else
    lcd.at(1,16, "---- ");
    
  //line 2
  lcd.at(2,1, "MBed:");
  if (sensorsB.isConnected(T3))
    lcd.at(2,6, dtostrf(T3temp, 4, 1, buffer));
  else
    lcd.at(2,6, "---- ");
 
  lcd.at(2,11, "Grge:");
  if (sensorsA.isConnected(T9))
    lcd.at(2,16, dtostrf(T9temp, 4, 1, buffer));
  else
    lcd.at(2,16, "---- ");
    
  //line 3
  lcd.at(3,1, "Kitc:");
  if (sensorsA.isConnected(T8))
    lcd.at(3,6, dtostrf(T8temp, 4, 1, buffer));
  else
    lcd.at(3,6, "---- ");
 
  lcd.at(3,11, "Bsmt:");
  if (sensorsB.isConnected(T2))
    lcd.at(3,16, dtostrf(T2temp, 4, 1, buffer));
  else
    lcd.at(3,16, "---- ");
        
  //line 4
  lcd.at(4,1, "Attc:");
  if (sensorsB.isConnected(T1))
    lcd.at(4,6, dtostrf(T1temp, 4, 1, buffer));
  else
    lcd.at(4,6, "---- ");
    
  lcd.at(4,11, "Out:");
  if (sensorsB.isConnected(T7))
    lcd.at(4,16, dtostrf(T7temp, 4, 1, buffer));
  else
    lcd.at(4,16, "---- ");
}

