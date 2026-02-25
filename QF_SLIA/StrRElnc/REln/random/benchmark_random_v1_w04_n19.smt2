(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "53"))) (re.* (str.to_re "607")))))

(assert (< (* 3 (str.to_int x)) 31))
(assert (<= (* 7 (str.len x)) 1))
(assert (<= (* (- 9) (str.len x)) 28))
(assert (< (* 2 (str.to_int x)) 28))

(check-sat)