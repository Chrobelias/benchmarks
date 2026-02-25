(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.+ (re.+ (str.to_re "48")))) (str.to_re "740"))))

(assert (< (* (- 4) (str.len x)) 68))
(assert (<= (* (- 4) (str.len x)) 100))
(assert (< (* 4 (str.to_int x)) 41))

(check-sat)