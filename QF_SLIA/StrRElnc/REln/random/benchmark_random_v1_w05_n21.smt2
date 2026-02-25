(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.++ (re.+ (str.to_re "33")) (str.to_re "0"))))))

(assert (< (* (- 6) (str.len x)) 33))
(assert (>= (* (- 2) (str.len x)) 53))
(assert (< (* (- 4) (str.len x)) 25))
(assert (> (* (- 2) (str.to_int x)) 53))
(assert (< (* (- 6) (str.len x)) 14))

(check-sat)