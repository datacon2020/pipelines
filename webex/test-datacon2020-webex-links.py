import os
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

options = Options()
driver = webdriver.Chrome(ChromeDriverManager().install(), options=options)
driver.set_page_load_timeout(30)

driver.get("http://bit.ly/DataConTW2020K1")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020K2")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020K3")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020A1")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020-B1")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020C1")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020A2")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020B2")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020C2")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020A3")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020B3")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020C3")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020A4")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020B4")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020C4")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020A5")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020B5")
time.sleep(5)
driver.get("http://bit.ly/DataConTW2020C5")
time.sleep(5)
