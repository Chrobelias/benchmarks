(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "809")) (re.union (re.+ (str.to_re "80")) (str.to_re "334")))))

(assert (>= (* 4 (str.len x)) 67))
(assert (< (* (- 2) (str.to_int x)) 51))

(check-sat)