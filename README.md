## Run scenario for git bisect


Sample scenario:

```

% git bisect bad 25b4d2be4521acf2c12d1fa53c39ff9aef35eb72
status: waiting for good commit(s), bad commit known

% git bisect good 8787d13b49898598b7153844be86ba2b129e35c7
Bisecting: 1 revision left to test after this (roughly 1 step)
[95e3535d61021974599d89783135dc4145011a73] Introduce bug

% git bisect run ./tester.sh
running  './tester.sh'
Bisecting: 0 revisions left to test after this (roughly 0 steps)
[964333368f26409cdc5188ed96bf4ae762b779e1] Add comment-2
running  './tester.sh'
95e3535d61021974599d89783135dc4145011a73 is the first bad commit
commit 95e3535d61021974599d89783135dc4145011a73
Author: Tapan Avasthi <tavasthi@Tapans-MacBook-Air.local>
Date:   Fri Oct 20 19:03:19 2023 +0530

    Introduce bug

 program.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
bisect found first bad commit%

```

