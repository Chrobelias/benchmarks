(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "344") (str.to_re "52")) (str.to_re "47")))))

(assert (<= (* 10 (str.to_int x)) 90))
(assert (> (* 5 (str.len x)) 34))

(check-sat)