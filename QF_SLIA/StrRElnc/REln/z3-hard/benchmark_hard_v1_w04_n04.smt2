(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "31"))) (re.range "5" "8"))))

(assert (> (* 9 (str.to_int x)) 66))
(assert (< (* (- 9) (str.len x)) 90))
(assert (= (+ (* (- 9) (str.len x)) (* 2 (str.to_int x))) 19))

(check-sat)