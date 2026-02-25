(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "22") (re.range "0" "7")))))

(assert (< (+ (* (- 3) (str.len x)) (* 2 (str.to_int x))) 71))
(assert (> (* (- 8) (str.to_int x)) 20))

(check-sat)