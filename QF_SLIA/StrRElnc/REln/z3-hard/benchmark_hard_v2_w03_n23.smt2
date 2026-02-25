(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "663") (re.* (str.to_re "190")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "33")) (re.+ (re.+ (re.range "2" "4"))))))

(assert (< (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y))) 92))
(assert (< (+ (* (- 6) (str.len x)) (* 2 (str.to_int x))) 32))

(check-sat)