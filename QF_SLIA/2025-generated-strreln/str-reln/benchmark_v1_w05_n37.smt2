(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "7") (re.+ (str.to_re "746")))))))

(assert (< (* (- 2) (str.len x)) 11))
(assert (<= (+ (* (- 2) (str.len x)) (* 9 (str.to_int x))) 36))
(assert (<= (+ (* 9 (str.len x)) (* (- 3) (str.to_int x))) 45))

(check-sat)