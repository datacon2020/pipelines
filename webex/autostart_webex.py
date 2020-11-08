import os, time
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys

webex_url = "https://tdea.my.webex.com/tdea.my/j.php?MTID=ma35f5af095e6020e89a686e94a084d15"

options = Options()
driver = webdriver.Chrome(ChromeDriverManager().install(), options=options)
driver.set_page_load_timeout(30)
driver.get(webex_url)

time.sleep(5)

WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "push_download_join_by_browser"))
    )

join_link = driver.find_element_by_id("push_download_join_by_browser")
join_link.click()

WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "guest_next-btn"))
    )
