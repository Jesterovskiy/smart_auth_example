require 'smart'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :smart, '9c3659734570f11fae842f34d13d3762', '51a2504a56831393e6c30eb86317fbd534e28bebc34e3d79d58dd5ccc0f3db8bc90f491d01a51b751feeee87a1a4a4d1b7bd6848695733d53ff35809f4890330', provider_ignores_state: true
end
