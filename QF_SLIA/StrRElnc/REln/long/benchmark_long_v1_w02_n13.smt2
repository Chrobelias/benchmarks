(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (str.to_re "6") (re.* (str.to_re "16"))))))

(assert (= (* 9 (str.len x)) 30))
(assert (>= (* 2 (str.to_int x)) 42))

(check-sat)