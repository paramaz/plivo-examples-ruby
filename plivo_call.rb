require 'plivo'
include Plivo

AUTH_ID = ""
AUTH_TOKEN = ""


p = RestAPI.new(AUTH_ID, AUTH_TOKEN)


# Making a call
params = {'to' => '121212121212', 
           'from' => '12121212121212', 
           'answer_url' => 'http://example.com/AnswerUrl',
           'answer_method' => 'GET',
           'hangup_url' => 'http://example.com/HangupUrl',
        }
response = p.make_call(params)

# Get live calls
response = p.get_live_calls()


# Get details of a live call
params = {'call_uuid' => 'XXXXXXXXXXXXXXXXXXXXXXX'}
response = p.get_live_call(params)


# Transfer calls
params = {'transfer_url' => 'http://example.com/TransferUrl'}
response = p.transfer_call(params)


# Hangup calls
params = {'call_uuid' => 'XXXXXXXXXXXXXXXXXXXXXXX'}
response = p.hangup_call(params)



