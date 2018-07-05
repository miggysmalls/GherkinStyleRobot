"""
Class to control using Chrome.
"""
from selenium import webdriver
from robot.api.deco import keyword
from robot.utils import asserts
import os


class ChromeNavigation(object):

    def __init__(self):
        self.browser = None
        self.current_page = None
        self.user = os.environ['USER']

    @keyword('Open Chrome And Navigate To ${Url}')
    def open_chrome(self, url):
        self.browser = webdriver.Chrome('/Users/{}/chromedriver'.format(self.user))
        driver = self.browser
        driver.get(url=url)

    @keyword('In Chrome I Enter ${Search_Parameter} And Click On "Google Search"')
    def ask_google(self, search_parameter):
        driver = self.browser
        search_field = driver.find_element_by_id('lst-ib')
        search_field.send_keys(search_parameter)
        driver.find_element_by_css_selector('input[value=\'Google Search\']').click()

    @keyword('Chrome Title Should Be ${Title}')
    def check_page_title(self, title):
        driver = self.browser
        asserts.assert_equal(driver.title, title, msg='Search parameter and page title do not match!')


