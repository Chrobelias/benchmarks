(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "649"))))

(assert (= (* 6 (str.to_int x)) 0))
(assert (> (* 8 (str.len x)) 82))
(assert (< (* 2 (str.len x)) 99))

(check-sat)