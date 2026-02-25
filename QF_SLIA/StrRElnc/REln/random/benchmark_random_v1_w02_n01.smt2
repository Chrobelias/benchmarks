(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "2") (re.* (re.++ (str.to_re "809") (str.to_re "751"))))))

(assert (>= (- (str.to_int x)) 45))
(assert (= (* 9 (str.len x)) 68))

(check-sat)