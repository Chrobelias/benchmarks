(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "64"))))

(assert (>= (* 3 (str.to_int x)) 9))
(assert (> (* (- 4) (str.to_int x)) 99))
(assert (= (* (- 2) (str.len x)) 84))

(check-sat)