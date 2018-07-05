"""
Simple Lib to test setup.
"""
from robot.api.logger import console
from robot.api.deco import keyword
from robot.utils import asserts


class Hello(object):

    def __init__(self):
        self.hello_banner = None
        self.response = None
        self.p1 = None
        self.p2 = None

    @keyword("I respond")
    def my_response(self):
        pass

    @keyword("Person1 says ${text} to Person2")
    def take_in_greeting(self, text):
        self.response = 'Hello to you.' if text == 'Hello' else None

    @keyword("There are two people in the conversation")
    def setup_the_converstation(self):
        self.p1 = {
            'Person1': 'name1',
            'state': 'happy'
        }
        self.p2 = {
            'Person2': 'name2',
            'state': 'happy'
        }

    @keyword("Preson1 Snd Person2 Are Happy")
    def check_state(self):
        if self.p1['state'] == self.p2['state'] == 'happy':
            return
        else:
            asserts.fail('They are not happy!')