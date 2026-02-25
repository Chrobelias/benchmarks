(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.* (re.+ (re.+ (re.range "2" "7")))))))

(assert (<= (+ (* (- 5) (str.len x)) (* 6 (str.to_int x))) 31))
(assert (<= (+ (* 9 (str.len x)) (* 7 (str.to_int x))) 20))

(check-sat)