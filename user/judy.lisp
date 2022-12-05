;; Judy Najnudel
(resource 'group "judy"
          :gid 5001
          :ensure :present)
(resource 'user "judy"
          :uid 5001
          :gid 5001
          :home "/home/judy"
          :ensure :present)
(resource 'file "/home/judy/.ssh/authorized_keys"
          :owner "judy"
          :group "judy"
          :mode #o644
          :content "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDvVX0FjKkYoxXRwr0H4mXSBFpU7r7aGMhv3f9SlGyacSWdBHnEboyZjCIr2D+ovoL32dn+uSd9TzVAxjSzbDb/Xj6oeu1tPsFQbAKzlUIUEwr6f2VY7yqr6MHSZVvbMNfDng/zKo8Anewd3L2RPXMzmoGYHBCbmhev1UqVOfCxk2x4rWaiApoIKEVmi8Dlw7B7HAIiM7UqsEbZHalAnI/OpwRZWOMINYpypAkSCXeb5Smxqu39e2hNVmDYlKcR7ImfRkoKVirbsxqak+o5HONOYshpl6M16pRgFvfycSYKJpQMt/4CTfj1N7PoKv4sKNnA0OgkWyhH2vj9czusss7 judy@judy-ThinkPad-W520")
