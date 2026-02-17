(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (re.* (str.to_re "690"))) (str.to_re "718"))))

(assert (< (* (- 7) (str.len x)) 19))
(assert (>= (+ (str.len x) (* (- 2) (str.to_int x))) 94))

(check-sat)