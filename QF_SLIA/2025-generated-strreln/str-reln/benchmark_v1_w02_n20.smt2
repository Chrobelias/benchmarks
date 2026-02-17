(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "113") (re.* (re.+ (str.to_re "75"))))))

(assert (= (+ (* 8 (str.len x)) (* (- 9) (str.to_int x))) 21))

(check-sat)