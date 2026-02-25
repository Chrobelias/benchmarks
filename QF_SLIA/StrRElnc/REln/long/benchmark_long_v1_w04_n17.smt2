(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "40") (re.union (re.* (re.+ (str.to_re "71"))) (str.to_re "380")))))

(assert (< (+ (str.len x) (* (- 5) (str.to_int x))) 26))
(assert (> (* (- 6) (str.to_int x)) 66))
(assert (= (* (- 4) (str.to_int x)) 95))

(check-sat)