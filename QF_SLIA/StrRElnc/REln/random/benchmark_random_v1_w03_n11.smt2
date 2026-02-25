(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "2") (re.+ (str.to_re "131"))))))

(assert (= (* (- 7) (str.to_int x)) 20))
(assert (= (* 9 (str.len x)) 55))
(assert (> (* (- 3) (str.to_int x)) 76))

(check-sat)