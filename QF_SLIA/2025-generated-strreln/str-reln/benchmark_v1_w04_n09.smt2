(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "7")))))

(assert (= (+ (* (- 7) (str.len x)) (* 9 (str.to_int x))) 91))
(assert (<= (* (- 3) (str.to_int x)) 55))
(assert (<= (* (- 10) (str.to_int x)) 99))

(check-sat)