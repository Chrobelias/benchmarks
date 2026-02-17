(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "90") (re.+ (str.to_re "637"))))))

(assert (> (str.len x) 55))
(assert (<= (+ (str.len x) (* (- 4) (str.to_int x))) 89))
(assert (<= (* (- 3) (str.to_int x)) 71))
(assert (< (* (- 2) (str.len x)) 96))

(check-sat)