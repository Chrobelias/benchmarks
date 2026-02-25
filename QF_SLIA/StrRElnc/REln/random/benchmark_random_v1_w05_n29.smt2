(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "166") (re.* (str.to_re "880"))))))

(assert (= (* 4 (str.to_int x)) 14))
(assert (>= (+ (* 4 (str.len x)) (str.to_int x)) 56))
(assert (> (+ (* (- 4) (str.len x)) (* 3 (str.to_int x))) 28))

(check-sat)