(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "37")) (re.* (str.to_re "84"))) (str.to_re "924"))))

(assert (>= (- (str.to_int x)) 99))
(assert (> (* 7 (str.len x)) 50))

(check-sat)