(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "113") (re.union (str.to_re "0") (str.to_re "2"))))))

(assert (<= (* (- 7) (str.to_int x)) 97))
(assert (= (+ (* 9 (str.len x)) (* (- 10) (str.to_int x))) 92))

(check-sat)