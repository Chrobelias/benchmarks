(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.* (re.* (str.to_re "709")))))))

(assert (< (+ (* (- 7) (str.len x)) (* (- 9) (str.to_int x))) 21))
(assert (< (* (- 9) (str.len x)) 44))
(assert (= (* 7 (str.to_int x)) 42))
(assert (< (* (- 7) (str.len x)) 91))

(check-sat)